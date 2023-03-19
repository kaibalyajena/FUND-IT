import React, { useState } from 'react'
import { useNavigate } from 'react-router-dom';
import {ethers} from 'ethers';
import { money } from '../assets';
import { CustomButton } from '../components';
import { checkIfImage } from '../utils';

const CreateCampaign = () => {

  const navigate = useNavigate();
  const [isLoading, setIsLoading] = useState(false);
  const [form, setForm] = useState({
    name: '',
    title: '',
    description: '',
    target: '', 
    deadline: '',
    image: ''
  });

  const handleFormFieldChange = (fieldName, e) => {
    setForm({ ...form, [fieldName]: e.target.value })
  }

  const handleSubmit =  () => {
    // e.preventDefault();

    // checkIfImage(form.image, async (exists) => {
    //   if(exists) {
    //     setIsLoading(true)
    //     await createCampaign({ ...form, target: ethers.utils.parseUnits(form.target, 18)})
    //     setIsLoading(false);
    //     navigate('/');
    //   } else {
    //     alert('Provide valid image URL')
    //     setForm({ ...form, image: '' });
    //   }
    // })
  }

  return (
    <div  className="bg-[#1c1c24] flex justify-center items-center flex-col rounded-[10px] sm:p-10 p-4">
       {isLoading && 'loader'}
      <div className="flex justify-center items-center p-[16px] sm:min-w-[380px] bg-[#3a3a43] rounded-[10px]">
        <h1 className="font-epilogue font-bold sm:text-[25px] text-[18px] leading-[38px] text-white">Start a Campaign</h1>
      </div>



    </div>
  )
}

export default CreateCampaign